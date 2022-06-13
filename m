Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130CE1842
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 16:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655137259;
	h=To:Subject:From:Message-Id:Date;
	bh=jpIcVcH5QE4umNQmF0H8V6FrR+1eJmc/8woj+PZMKIk=;
	b=XNT8+E5KqZcBGzt9G60YadxE4RzP1he3EFS2MmZ2108o/blIWltD0DDT8aoQNINv
	3v6rwPI3RgTicrtN826kPpi5kgdQi02uY/t6f2jYI5G/kgNpnd4G8wIPvKRe6i/6s7X
	SV32bePGp7aZr2jW8F2PFMpfDVdHT4Rt8+Hqa9H8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655137259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jpIcVcH5QE4umNQmF0H8V6FrR+1eJmc/8woj+PZMKIk=;
	b=fjZs0oPp9geRI9UzPB+3jBn9YnIapSxiawqDz+YHezGB/VAAJR1Gh0cZ1t5fmwNr
	w6xYoNH9PywKSOVyP2UXwRVz8aV62nEoLYyC5kl8AlCrraIk1EKYXjr/lu4KBmJgwmw
	AIXFto8U16My69eXO1vihutRfRIcR7MSIXD10F6M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815dde4f07-aafeb218-2e17-4c59-bd1a-52528099da00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ba9f9a7182c3362a1f46873dc127656bd8ea3246a79495e1a2e75b2686764d6
Date: Mon, 13 Jun 2022 16:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655137259
