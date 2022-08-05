Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894F37C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659696053;
	h=To:Subject:From:Message-Id:Date;
	bh=wI37UdmatMvTphCzDojPlcaXCXPjFE0iBl9YdcW4ljc=;
	b=N9PvPA/XcXyubK/PudmWE98VjDcSpjGuqJgHvcEUdkFgkcXaLZslRSStwdBcwOmZ
	P9lHLnE0soN4Z3ernhlGzDlbb/URytcjSvyW35JgD/MlXas4eB7hC7haMM7wExzkqQt
	WwH/49HrqdogeOmtV2OSNXa9gK4Ze5kSRaFac/M0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659696053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wI37UdmatMvTphCzDojPlcaXCXPjFE0iBl9YdcW4ljc=;
	b=JvJ+KHp+S4z0DkTv2FN08lIvMR3KcfKnD/nyMIyZ58vopIFzHoqe1WcE+Ix+CqO+
	5uDaUBPnoWtE4UEZLt6081uHEbC7S0muZhSOWzM9oXrh8Dor2bbfHD9CG/0RNf8oIiS
	lSEK59GThrLPhgu9IO9K+ut9DvlhIAH1nTpmn66U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826d97f97a-8dae63a7-75d0-4a9b-a9a5-355f158dfc6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 480809436bcac2527195da618e1c08eec58495bc4094ed7100cb548e703525da
Date: Fri, 5 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659696052
