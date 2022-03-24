Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2617A7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 16:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648140178;
	h=To:Subject:From:Message-Id:Date;
	bh=2A3EKmxmdR8umndpWuFegfvxa7kljuwGY9GjzEm3JTk=;
	b=VJp061hWXq8YoX9mdJXt6iqPL9/dsGjd5RHWExk28AnwBB+l7k6WGoGOHPJMWDdo
	x/5gdpnqMWrkUo5d/YLvy1TfzY8/G0yr5jDrUDwAvOU67pcWMUELLi+Sa+grZc06wtF
	n0Mc4zGXwP1zzDQQgFIcVcnCoGsEzH5/lN00sJYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648140178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2A3EKmxmdR8umndpWuFegfvxa7kljuwGY9GjzEm3JTk=;
	b=EStRmBLMdLz/RDnGQUPbpdGs8DE2c/uKMY0tru5uTTumplv1ojWdSWmS70xOC7MA
	VLJQBE1ODU88xEi09PmSSfvDET6MFVbR3t7X8049QsJRgd/dOOtxQtgU6eny7Z9TpIh
	ivoWc8dyBpDj9jkF0vCOr+COBfgxS3xuqxU/eJvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbccf535a-148cb3f3-f183-4737-bde1-b0bf7f70e0b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38e38ee8f4919f4582b8135fe0f4788b98ed01cfd3e8f135b13d01d192c9fdf4
Date: Thu, 24 Mar 2022 16:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648140178
