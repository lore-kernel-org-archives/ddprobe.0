Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECD42CA9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 17:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653066419;
	h=To:Subject:From:Message-Id:Date;
	bh=jkwV7un727QHXXPhjT8AWYHuoIsfk7V6jDprwICiekg=;
	b=Epj+GBtasafge954iMzPZTlrhdj/bunOmjktSfnPETZ6ivB9ZpZmwL0CQso9elTa
	8ASfVcKjXm3/Lj+9yTu5DYuGGa6HoLRAYPV3e6TeB30Lr61srwGh9TDl94t1kG/I6Wq
	DDGEJuxfmjonYeXMTWCfqC8RtEzHHGLiXQv4HSGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653066419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jkwV7un727QHXXPhjT8AWYHuoIsfk7V6jDprwICiekg=;
	b=TrpvtQPwRrtA6J4jVuiNAMOSL91VK6CIspNbM0iuoUqwWFb9+rrw3ztcgFRN117t
	p/yQw/NsP6/1/dn8uREwXHB90luP/et2yQ42XH3CZv4QoWxBn0/6mEiaNiXB42hRM9E
	ygh4pThvobYVDma6Pnkwhm90oKc2gC9p1sXS18kU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e26fcc5d-47fee75c-9cdd-4a95-8f02-7ed2a2be18e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ed6f194227aa9e2672b46f7d6771766ab29d3748c95f6c6327cf5c74b6fae0f
Date: Fri, 20 May 2022 17:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653066419
