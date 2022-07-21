Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB801FA5
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 00:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658363812;
	h=To:Subject:From:Message-Id:Date;
	bh=co39RM3/9Qg6qABymushEDHbzyjWtuvzZ+m3Ka+94yE=;
	b=P+GlOqUO73zLE1OjuEyb/3XqKNk2ELTXAsGLx0rePEqI/nmdy6jkMe7qoz0Ubo6y
	jwN5kunUBrPbaClTQ13kzaP3qYT2E0meU88X4SHqg13tCc+r21bvjzcsgSStbzE40y4
	bCHSRzRyD5+oJeSBow3MzVXOBLEkKa518b/VspiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658363812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=co39RM3/9Qg6qABymushEDHbzyjWtuvzZ+m3Ka+94yE=;
	b=ENL/D+KqAogyxuvuLbA8YuPo19BvBKYPCsgUmT8MXJhWkNVkxfy8K+wKkHwZwuMM
	aH4zSuXMNmc5wq95Q8iGeWIRB35C7ZwI8tNCoT3fCx6rLFV0q5bUWhWlZdfFMTqC1uX
	if2S9/RJbdlPQqyEbM5RCMEnawbBDGatv9GOwZLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821e2f99c3-09517243-fd3c-41f5-8dda-cce6a7f3f5a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba3f8383bc77b5f50ebb8f8a6b743bea8ff0b8e4c963fc76a44d84dd91f7efb8
Date: Thu, 21 Jul 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658363812
