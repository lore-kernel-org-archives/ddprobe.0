Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C9E7E9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 01:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656551212;
	h=To:Subject:From:Message-Id:Date;
	bh=GI1eNOP5FBL/tN0QsJKwvVp9A7/eXvbFCyXkA1zWoXE=;
	b=NjgHefxC+pwI+fkMMLdL2qgZHZLXudONZcAYtd3uXGCJY9c4qjU2pfeq9o0LqB8A
	m8ztHjWI1CXwd+HP3Ks+shOZsCa0HvCGKcJwVcPSNMDv62d6XHbWocRMufRTnNU+7yi
	lfSD34kqdaUs9jj4zSbTpcRvY25Uffqdx1Mb9KaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656551212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GI1eNOP5FBL/tN0QsJKwvVp9A7/eXvbFCyXkA1zWoXE=;
	b=SjfN6MVrUqMERVHRXtdfq+mrKXlFdCYabkxXIGXVjO0yeqoY0HfsKj+f/jZJWpOf
	lOqzVdMC48POCFwJ34Bqa7c0dB7rcNRddG6CfSIJnGl4fNybbWIFU2n1QVwJDircp4k
	fr/wUKNwI8m9JLJH5M5hsd8acOZ7SkKMZVJ6rAXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b225852a-ea381220-7091-405f-bb9e-3f9ed42adc17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd813abb7ac962e7f807256868bc997764d64f7653861b3f8f9cb76df3cfe257
Date: Thu, 30 Jun 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656551212
