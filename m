Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4868F33D6
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659080452;
	h=To:Subject:From:Message-Id:Date;
	bh=JPEe9OuUk0hdnUs7HMx/3ybE6sqm8pzYsGUReuh7/7A=;
	b=Tl0S+j3C7NHxEhka04Nr0tEr2BEk0qFsBckQ9qDuV6YVwvW2fBdEpaqxMMd2YQ1O
	v1fT8jaxBIWb8xpC9T+x7Lh1qDSy9hfIXV4pK3fL8X2ax2nLMiotBLfvRLczN8Sjy4I
	LZRU0KcFL2pQSBcytNHuiQp0FDlCa8OywuBByHLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659080452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JPEe9OuUk0hdnUs7HMx/3ybE6sqm8pzYsGUReuh7/7A=;
	b=iCktBs0Sl4kVIWVNM9/Avz8OoWEt8z5tce0ywtlNdlnO3VmguW8usIBJYp5MOEPH
	iz3qfeJ4YlDgjgvGPoR/dtqbBXbbMV5cSbn19jTueJKtI9B8VjkZXLgFnHBdDmY/th8
	uCVSDwEXTgFhP0oN7xrW/hLLSNw3JOeGhpr3O/+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018248e6a9e6-7d952e05-b5e0-43ce-9b48-7e2b5c334803-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91b24b50ada69a3eae5a63d8a527e35d90eb483482b26478cff673d9227c3ebb
Date: Fri, 29 Jul 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659080452
