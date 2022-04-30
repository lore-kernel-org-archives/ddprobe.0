Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 951DA46B1
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 08:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651307278;
	h=To:Subject:From:Message-Id:Date;
	bh=/UoKlguo91OxuSwo/AVqRNh7jYTZ/vG+IunAM34zuak=;
	b=l4twLsVyuEdY5qjPAPIkeisDq1+icR7U+ldKBPFsTB+cn2n8XpCgUXJ/fgaGOwn2
	KetpKJesHgHhdre9JEmZ2BtY5gjl3m1y7mkkilMUVbwAJ/aH14/0Z+tUm4a9oARpksd
	Q+xk97IrfyUk3Qh6hMQy9OmwVtJAMM/HLQkHta0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651307278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/UoKlguo91OxuSwo/AVqRNh7jYTZ/vG+IunAM34zuak=;
	b=h51uBaMUHnFgJz2Brq2rBD8KkGUXZ7nncbKjyhlt/X6yavBDrOCW9kCgYl4+BgG7
	rAsZrw899omdMvc4fzUCRb3WtaSss536HXkOnwkEQG9YG3/gaYMA8PHpHe1l5nh5VYN
	N1Frzc+F+AOeEegPYhYrcxnVQCJSzPoMtLRAj5rA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018079956ffa-f2044f6d-fae3-40d7-b755-ed8430b3d169-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4903cd1e6c66b4f4d33d60ae1a010095ed05b08f6d6f504e7b2eafedbc5ba47d
Date: Sat, 30 Apr 2022 08:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651307278
