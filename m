Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7D01FA5
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 08:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653727259;
	h=To:Subject:From:Message-Id:Date;
	bh=iYBA/Wlh//3R8oc5XDIgbuWt4L9y4t7mG+1D4LKXv0w=;
	b=TUnrlKtDh6z51sjXOdta9NWWcVCIhVupIWuMeUSUjsLpdDvUUu1eFwqzvUB69LjZ
	cKYruJgcZjxznOkkbf9dHaA+BqI1Zvta2gy9N9TFEoXCLFkOHeMLBE2R5gpYxvazv9g
	ArGUsLZ4lk3ijJVvK/zuwJbU5e5pqY9f1tpGJ/+Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653727259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iYBA/Wlh//3R8oc5XDIgbuWt4L9y4t7mG+1D4LKXv0w=;
	b=O3PGm+wr+qYn/GkhbShKjYH18O2C75QZWuEjAFiBbA8j+/nOwrk0TzJyoHEHPUBa
	TR3i3h/EiTeOzcxJU6ODIqN7U145dpRcGgiN42khYVElWr2edQ8oFCBg5mQKI1pYuRr
	arhD1LX4DIOagVn/Y9Pvkt3KG/6g/MOUuyS2GrJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018109d36a8c-e2651bea-793f-4565-9f6c-2898864e375a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fd3ff9effcebdcf53a5c67b0686fbc8f2cffdc3f0dd0cea6abfa7c26d75f06c
Date: Sat, 28 May 2022 08:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653727259
