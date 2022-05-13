Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B861C4C64
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 15:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652454060;
	h=To:Subject:From:Message-Id:Date;
	bh=rRQh3/FNq7Ogi5nnZcBXhCw384lN0XKEn22axAnHo0Y=;
	b=L0kQ3+W+jEXs4oWKYsBSfn/VhGhOmt/fsheiiNhQER67dbGiFaaijafz4p1t7k/W
	lzNp68mksHO/tkGTz2zc0bU5uiwKyl+RyuTKtm7a/V4LUElEhPfzlLyNSHoxtk8VGp2
	M4pwSZlB5ckA9PYgao5rPQsCvkXYdYFqVqBi0pQQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652454060;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rRQh3/FNq7Ogi5nnZcBXhCw384lN0XKEn22axAnHo0Y=;
	b=P1GcSGigrz80EaHXJJhqcb6Cj9noiV1MjIzHDRdrQx8kWPJgCEdzZkgZuHsZZQf5
	92svKxAlDRVL3D+1qGL7YYnXUcyruGjrtfEanqRzbqlseVOkZVQyrEJ45GYz6tll+e6
	r8NmT/g/EhTQEZAep3RDpEuojAZOLIA3dwIJOrfg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bdefed42-b854589a-2324-49f2-87f3-00ddc0c51979-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c2647bd470791be5b816ed85bef36a36e7574ef443d519918997b0dff9b5e8f
Date: Fri, 13 May 2022 15:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652454059
