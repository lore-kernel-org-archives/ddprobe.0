Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384442F2E
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659889852;
	h=To:Subject:From:Message-Id:Date;
	bh=2dghigUr5BIwY6n00CEh6RIht1uTbbzGgz329awln6s=;
	b=gTlL5Be2QJ8ouTbB8oVLWot9SRj2GQ9Usx/4+f33OkHuqTZ0rZ4NgZh/H7fexY5E
	zfI6bWLUZpSiG1ImNZyK0Jb+ED+7P1UeWWlQhA3UzXJwaJirbtZWmnCKlLFzGfQfp3b
	In8oAGZVclqh5X7DMAoQT89SDm/W1emOXHqmXUys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659889852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2dghigUr5BIwY6n00CEh6RIht1uTbbzGgz329awln6s=;
	b=LobIWveEOMzGKt3gDB9PIqm3qDWFAF4Bl5SIqbMZppmX0+mmKCagebpqx45+Hg4+
	wzssOTldtINWdMeeozvRuiN4A6MSqppCnikv5P7wtyLZ5IBVqWl6SaWJ/xFieZUe8q5
	WE+p5OHzQY9gAJSPW0+TdTE2PjwDPYN35/O7Xpkc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827925208e-b3f34caf-fb76-41e9-a6f8-6f8ebcfec42d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8273093a9287c2c6890e545ebb90cf65e45b15ec4027d950dddb2112be0f9bf3
Date: Sun, 7 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659889852
