Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1447C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 15:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648482418;
	h=To:Subject:From:Message-Id:Date;
	bh=dfqPxP5ppkTiGSEUDZvTJCgm/0ddOA659t1xKDfGZ2Y=;
	b=gbMOryV43R9R35y1kw4KfIRL/G9O6DcBR9S1bmqcY1Bp3qFm9ov1lASl2lFTnKuK
	zCjIof8FYyPMEaoUTa382NXawK4i6LJIN+5YLDyxzjeVRKoHnMUPLNTajQBRnD37KqZ
	ndMwaoKkQw8HTFIpv3aHgHxIdxT1T0VOw/EYsxyc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648482418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dfqPxP5ppkTiGSEUDZvTJCgm/0ddOA659t1xKDfGZ2Y=;
	b=kRalmf6ys7QFx+8GT7LI1fjcVUwiMP4qa6AO4O6QUn5UthninOdqUAzzOiA2X0mA
	WLLy//Ik7Ktls1c6Zf6GsFSlDRuszVSRTah/WtI8E0BYarnw1pWgM3po1XbDSaAUc5H
	PueShGaj96j8Yi5innWe1x+kx8ZvX7UOOXgQwilI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd1357e31-e3c28833-1646-4182-837a-ef4f3688dcfe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0b73f335043ea1422973d0a16a09884e0f8cc6bdb5ef445f8d0cf043336bc4f
Date: Mon, 28 Mar 2022 15:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648482418
