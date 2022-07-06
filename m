Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4730C4A3E
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 12:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657112212;
	h=To:Subject:From:Message-Id:Date;
	bh=mh8d6ynwuSjuB+SPXI6hjBvffvorQlJS+V2uMh1R6rI=;
	b=XJ9dbda9+uwYpo+ta6XDIaH260yRcd/ZJi7+wAnjY2Yh2f2owsoTwydjQnvW2Gf1
	A3tM2248ZlKL2l4KWZs7swtpv+CeEnZ1b2375CM8sIZlzSRA2lQ1V2ePQ52I3KzZ8bL
	E/qaEbxTf6EwKGSFRumw/hXFFc/Tta7VC5dRtxrc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657112212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mh8d6ynwuSjuB+SPXI6hjBvffvorQlJS+V2uMh1R6rI=;
	b=Vfri9BwwPxGSiQGtu8SIl4hkrtOPA3497KirweD7IfZrsEPFw+/TeMWz+Qn0luVG
	HbIdIziz16RHI1TP7/UnpA8Q6W0mP+VsuG00xtufQZOTjK+1UcFZp6okJ1jR4KKxUwu
	NV7BpGadhKwsIzbgLoudTXz4da53byxlWJFAs2Aw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d395b366-548b95e7-8aa9-4cff-a3f7-d78e4c987b25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffd9d84e829d210a80cef0617d202b7f3d01e8a243a43612d74dd51980fdaf1a
Date: Wed, 6 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657112212
