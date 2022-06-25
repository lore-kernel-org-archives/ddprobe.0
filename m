Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E0877C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 12:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656161812;
	h=To:Subject:From:Message-Id:Date;
	bh=HobbIZ7nHbhQWCEygSKWDvwly8fyFnhVr41dAtQyppo=;
	b=Y3Np3mLHDuAq4xg7LQUJ3HyuTQG1z1F4IfI0ilChjS8xOVV629rnmXDHgVgWMAR4
	fMTm3TD0ZaFv53IWiKzugVZ7lo3ou1iE4rFg1VQsaJ/Ng4t/Zf12KVaDoWQ7CghLLhG
	mu7LwUk2Ul06U136fIsj6n2xZypCBxO9C55Tbv7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656161812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HobbIZ7nHbhQWCEygSKWDvwly8fyFnhVr41dAtQyppo=;
	b=DC4bE3qTlVRYOjQYdBoMUAOqFgukaHCi8ZaGoD1OdqOcSAcE5rvmrpvB/whXHKns
	yLK8XPigJgk83RaLUVhcxej5d6yBPFH3Hvz8VHNdls2up5yZtjy/rcDXuAXdrp5/1NT
	okB7mScdxMZ/pMLxkQh4VtGM0/SNLOID0wtX1qEU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819aefbf38-4451c530-25f4-4888-9bdd-e277c8f5bf8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 636a1d5ff7c0e01188d5066b1cf8c8747f28cac532fb876f487a3d971edb7d72
Date: Sat, 25 Jun 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656161812
