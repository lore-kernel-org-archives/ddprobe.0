Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7608D15A3
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660015852;
	h=To:Subject:From:Message-Id:Date;
	bh=b3yH8peu5NUH0fTlUJDeUJf9Y/tn6UwlpDajYMRbpnM=;
	b=Jx6k1XsinnixPgt+7k8hB4iNR2WzS5TQ50MqgmhK8vfTjpWc/sC+GBfwkDi43ObY
	DZEokn1XZvJNU6VtJqPP2p1d2tuC/5A94GBpvUYWvoN7DriM4WrKFhNF+IW2iCWH0ua
	LBMin5a6zSqeoQ9dCZk6J4QJWuHS8D+byCIbJrco=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660015852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b3yH8peu5NUH0fTlUJDeUJf9Y/tn6UwlpDajYMRbpnM=;
	b=ixyKj9G2oIqcDs8zqRQBWIL6SHHdwrLa7jlWWh44LtFhfoW0fribz0jwcEn8HMxm
	dALpSNStaMhmPl8P5J9izz+VskJkSnNrysCYrajtZAGJDCoghEFV8fU+33aSBThMbq0
	Lb1CFz+J/PUS+i9unVrm8x4QvB4NsX/hgcjjk9k8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018280a7bc60-f04b01ab-65d3-471c-9fbc-a3ba5a0754a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e68d34d18e9520249c139153a4a7b53ef32e56d900ef94007c42120fd3e9697
Date: Tue, 9 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660015852
