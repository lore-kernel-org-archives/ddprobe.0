Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABE328EF
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656857812;
	h=To:Subject:From:Message-Id:Date;
	bh=QuMrAOM2vLd6z2Tc07P/B/JJF8AF1f6rJd3orgWUTbk=;
	b=AjrMrdqScfQMmXSBLCgqXHgTJfYGJKV7uCm7sm6E/GNoK+9qJohGzZ1+OWllJgPR
	LrSfdAHRu0vwndzJyfdOiFMD9XO5W5w6vxZA8iQbMSSLE5sZb60WBPYHXQyn6TSYKv5
	3zXVi2P00OlM8en2405MOZ41iAqKXSbxZwyC8Zuc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656857812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QuMrAOM2vLd6z2Tc07P/B/JJF8AF1f6rJd3orgWUTbk=;
	b=gTEHtUgZqL9rz47VQW+lQ0uh2pIbZ7LACaX7h92ncp5EAgFkw80yFRp8ZTUZKte5
	JXnZYhcay2vJuDrvBUzVHATx25EyJW1fMqM4N5kydE7YQEGAyd3Lo66ODrsBFId0hMa
	d83/CtAW8D2SwrFdQ+mOoABjwgdtoNeF+2rgad78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c46bdd28-68281140-4079-4c99-a9f2-bdcd0829e949-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c73377d3e67fc22ee904480651a365626c343d22f478cfbbdd879d174bc8664
Date: Sun, 3 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656857812
