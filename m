Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8DE4429
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 03:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656817612;
	h=To:Subject:From:Message-Id:Date;
	bh=Co8xuwHVNCEbtfoP6mQzFYmYZMsrUyKsARZ1eQdJ8pQ=;
	b=LKRYxczRtywy/MKN6xcMi5OjmjrF5JZ6dqBVo+yOh4qW4Y7KcB0tutVExQUc9Ako
	o1VzY+xQ/8dXUuXQlxtOBs9k/8jAmDFxhn81S+WYx5WdBQ63Ghrs/rSnCp1Nj0AB2C7
	3JBaYAjYvsAmbwz8ucUfLjCh7qOD/yKRT7LPyhGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656817612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Co8xuwHVNCEbtfoP6mQzFYmYZMsrUyKsARZ1eQdJ8pQ=;
	b=WdeIITmd6zWY+8SuxqD5grLch5fUKEt0dZTXs3iVci9HhVQbB0zYQj3QqK5v/EMv
	ubpBYQbD0+g2K5/tr0Tp6P5QqGQcFBDCtOWv/8gqzwHSnZpWgpnN/wtYDAXzDTf6nEx
	xwVIc5PJro879lLaVH5nHAA1WJZMA1tvBHRFh4QU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c206760b-cbe725de-9257-4540-aff2-51f7dff55a6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12afabd8b309ce08c719d2f2279ffe672dacbecff99b035a5d51974d3f42c32d
Date: Sun, 3 Jul 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656817612
