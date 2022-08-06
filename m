Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6A57C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659813052;
	h=To:Subject:From:Message-Id:Date;
	bh=ZhB2F42zuJP5t/O6mrjgWnVEP+LJFQj8vQzQUM9yZK4=;
	b=EbjkrICl8iuIqw+t146ootzVsnrNFr0qjB4/Y9E3Koet6m2/cTajPJWiWi5z8kkH
	TCdC7R+TKlvzVKjeBPe+omyFyRnIJE1R/SYQQnI/s5JCsoKiLy+k9+z7eCtNuNq0hls
	npcYxVNR+fhxKFgfwt9C9kWbSmz5PX8ih22xA0q4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659813052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZhB2F42zuJP5t/O6mrjgWnVEP+LJFQj8vQzQUM9yZK4=;
	b=Lz4z8/7gwlarZ1PyD215RJPM2RWdFIoMNZs/Xipx77px5orBjumsVJrgg4LrIKH5
	SXNtrBzJN+Qe6nHUUj9Jbf4Mn2piJ2GDlKndABv2e3uzhfQHIs9u7tayoPr2sMVWI/u
	y690gSFW1OhCoOz5zKxkow2dUKMWLZW7S8E3/0gY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827491405a-d9222183-a5c3-42b4-99a2-6a2d0ad8896e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96da65fa122a46d023978c26970b689b677c352d2939e461af9b29723be5c6c4
Date: Sat, 6 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659813052
