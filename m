Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F2E15A3
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660017653;
	h=To:Subject:From:Message-Id:Date;
	bh=la3AqJGGCVyJMMGGWk0f6MbCsr0Nx2c5zO7VGhVRae8=;
	b=FFDpvJdR4NjuvJGyeFoF3E43mHFjXp2bmbH0BdU116ni9pMbzv6sN56ziM4Aumdb
	FCIQmsp2lF94PgdkN3Pu8jpmnWEic+XR/fKdoPZeleO53OaTpf4KqkCB/BQ0rtlk13r
	ijjO1nunxujZCdnZN5XpHDx1kTi8/5j7deGqREqU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660017653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=la3AqJGGCVyJMMGGWk0f6MbCsr0Nx2c5zO7VGhVRae8=;
	b=VdqjoUn9LfeowK219EaY72WZ+1pagOhkgGqBACIuPRgKnKMxSiFNiXYPx3Waz1ZG
	Cc59ROl1VidfE0Ddblhwp3XgolhNdSOUghtVZ9jDnvedyAN12wYsHrrJ9XzjaP+74gt
	NDJdej1x6RaSyKK1Rur++mObDqMsWMyDNbHWBofs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018280c33357-92ae8153-1aed-4d14-a3af-297ee007369e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 774575cb58d6a53482db2e0574d07d662425447373e10cb6f0b81b162b5c82e2
Date: Tue, 9 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660017652
