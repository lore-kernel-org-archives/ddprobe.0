Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767DA210B
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 08:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652431320;
	h=To:Subject:From:Message-Id:Date;
	bh=izERt7NTmox4ngbmbbWlag8LZkS4rwbRQZG0ULVDJs4=;
	b=jr6SkGyB1Qy2WlYU2QMb9eGREe2PAFaPfQ62MFjDBeSTyY9VEVtLLGJGm2PlzLPv
	zbmyxM9gHuJVgiECuJAH6M4yDO+WkIUsNQf06BYbtjSYyj9jQzADk1LNL+PtMEj+EAc
	cnOj6JEcQGyiuUtg6G/3KCDWOZtd77NCrvXAR/Aw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652431320;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=izERt7NTmox4ngbmbbWlag8LZkS4rwbRQZG0ULVDJs4=;
	b=PhBCJhac68ABi9exfhmcjbuQNiEJVs8yOCOUVCw1nvkpHN6eyGmRZbG60s9UGapm
	e7m+nhhBbE10QWb5Fi27KhZRL+VGXV/zJVoKP6+D3ulG1ogYAHyu9AUvpcM822kEyQp
	3dnZENnfj4Q4QTBPxiGjdZzInU5MJoDDcTECTIUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc94f0df-0d63adfc-d8d9-495f-99e8-a2c434615afb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2fb8283a4a859d0742364959f78544d2e739ea34b221bf6e949beb7f5cb60d1
Date: Fri, 13 May 2022 08:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652431319
