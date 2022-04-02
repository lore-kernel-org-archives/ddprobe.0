Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4927A
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 14:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648910758;
	h=To:Subject:From:Message-Id:Date;
	bh=OQmcuhKyD+nkmP4CMa9nyTyDW4NnrBKNd6BV7XCggC4=;
	b=b7xv9BGgJ9PtKSwAh5JZHZ0D9jhCok6LJywpmBkEP548f6s1rYc1SoU9u3f2bnJx
	+sHIC7s0HcDCIKYsAnLlh64f4xL1q9NlyAu8F5/vStKxoSlMkNBJwsLoT8FVOsA+vnS
	KqUs/VY4GkEsyG3d3vXZ1YPnWjSCsAJM69sHi8rs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648910758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OQmcuhKyD+nkmP4CMa9nyTyDW4NnrBKNd6BV7XCggC4=;
	b=cQfX6Oev0AC7+ZakeLqRv4NHN3PR3ag6pdJ2RN3j3gBNdqMm8JSxZlBl8Sy+sbbs
	zVmFzswlxFq2BcZrKhHpHQNOerovVIblagkPiLLrTnvnOOjB+1yp8YTGbiFvin0rK5s
	hSvfAzNFUkDmnrsraSFzFRHasvgnWJPEuY00oFXA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017feabd71f8-fd7b560c-e5e9-48bc-b736-d8ff55b0cc8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45aad7b238877834b6c505a82aa37e20ff6b666b336ab9dabb08165b559d9f1f
Date: Sat, 2 Apr 2022 14:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648910758
