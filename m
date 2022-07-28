Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423837A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659025852;
	h=To:Subject:From:Message-Id:Date;
	bh=8uexAkVx2oc81ydF2NpRRqixXVn3+jMxG1VdGCBXt2s=;
	b=dA4uOt303SnBdHwRXizs+7Etge4f31gkOfVKIvwE1kCbAG/3AEn2RBuFrX69bWSu
	TkBd9rcte/i9VZBD+cMv3adSmXkkrPRSsGA97xvttshziF3aVCMqQ7mL7yWuO+Fvtk8
	uVAmYIKM2P4C7Ws8rXiPHQCfPelzqKGrCgxOtX8o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659025852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8uexAkVx2oc81ydF2NpRRqixXVn3+jMxG1VdGCBXt2s=;
	b=Fp9ETRS0nvI//dmxOZTOfDm2VhbNZvowq5Q+YgezMDWdznLkTRHgUTXbWhXR0lcP
	qiOAfCS50grsaKwRnyWWf1P6eh/Gm7TOSbrNULwMUtDxH/b9QOpSWz8i5tSiWiXIZk+
	18cu7MYsYRLsvjvLYAxfHRP7Nic1ppkyEDo3IGgs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018245a5886f-fbf6b4f7-9686-47a9-9a51-baf65453e374-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed026326abc82dbe0a58f2881f8475b9aa2aad710f9b35ee3ebddaa727d036b0
Date: Thu, 28 Jul 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659025852
