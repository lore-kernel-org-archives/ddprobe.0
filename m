Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B2D29A2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 23:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656199612;
	h=To:Subject:From:Message-Id:Date;
	bh=UgKNTVJiITjVsR8AT/VTw+9EiWAwJwdn0byLTTO45F8=;
	b=kJwAcjwl2sODeOLZTH5zbmaS9o3dGiJD65GRp7rrS1I+GzWsYI1/rSeKQCZMyigW
	KDoRoaesvAHcbl7GYmoSF8blejfxTN1c6eCKacKWqo3k+pkHmiiiYSb4LU2QVHA0AaI
	E1RCApVeUKOVc3n569D2TIByPyEb0MnGiBYQLZwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656199612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UgKNTVJiITjVsR8AT/VTw+9EiWAwJwdn0byLTTO45F8=;
	b=YyjG9zJvQdvgstAcQI6cT/fbS8IC3zgBxOv7F6vsk7DSiRswsgUV7o07iihLpB3O
	NBvYUy81RP4PfPaPO71ESVrVpF3lnUDlADnfWzzxms3zhdAIQGQWd+IC4ouKLtt8JEI
	O5s+cyLP1NvBFceFrpDHLECq4ATcuLRL0OM2RBdo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819d30877a-4f8388c1-119b-43ec-889d-7175c0320fc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6712a899bd40ea79e7b7ba8e71091bc22ade17ad0313ef1041356cd4b312fbc2
Date: Sat, 25 Jun 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656199612
