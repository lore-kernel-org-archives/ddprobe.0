Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D23217F3
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 05:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647667885;
	h=To:Subject:From:Message-Id:Date;
	bh=RZI+VdNGHlJVITQIDmWo60Nb0UcGV7nzf//4cmfkVII=;
	b=WLSzxdzPdROl9T2P1l1XRQwMCUCN0JdFFzXmFoGu9jZbc2p/11++W5XbvWx3G86a
	T8mwlL9xqqp/5IkVfdRwA39zZyoxjVLTnUKd+9Vm0v1VQT66j0z2imizQ5i+/BqEdvg
	BvKX4sYmVd3kSu0WjxojjR0La/1Jahll4jggxx+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647667885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RZI+VdNGHlJVITQIDmWo60Nb0UcGV7nzf//4cmfkVII=;
	b=T9VYjxlLQAJdd1lxqTa0/o9hcAMqg52R+1AejVZ1CdlnheCpnFQapqFGK8QH27ID
	HW4a3Sbv/++7LAx/YMD6WFMh9dsFJFWxnXHVfuATSd5A52gEKv/BX5ibKwC5AgwZLlX
	K2tJxDBWTzuBidD6jpdFoxzRfEb6ofiDcPBjZtCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0a8b342-e77dbea6-91e1-4ec8-87dc-3366d347c5e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: addfce017d41459c8e6c376bee603433a65bdda188e522eac2a066356644a5ff
Date: Sat, 19 Mar 2022 05:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647667884
