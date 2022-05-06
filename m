Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E96D7E8
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 06:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651818958;
	h=To:Subject:From:Message-Id:Date;
	bh=obaZbiDOYiD+QoLd26+DeP1fyQ67svDcM+fISLOCyqM=;
	b=NrwHWJENQAbDY/K1/N/NNt5WgGw980E/j3yUVaifGqI+D6861NqFQv5RqBAe1GKW
	mozBtuRGtOYw/mPRNbWWLLvs4Cc+x4WOT7TOsqaxSnJ4n5C7KwAtS0yteyjesKDB2Lf
	sOzYWAJSNLoNoMivZX0EyuOK/TmNmRFz0MSP08Ww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651818958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=obaZbiDOYiD+QoLd26+DeP1fyQ67svDcM+fISLOCyqM=;
	b=byHssst7pHqxGfjbk2wI4cQSTtHYmjzn/DIe5xyK+8NNXXLL4gQNnuRr/gRzZcDC
	ZI/m3a0AgyOIGy81iiH9V94l2saySwjnpwSBXRghC+0k3Yr4wukIsXsLyxk7N92Gzxs
	Re4s0IhbkO8xNVVcL13DJoe5+mTk87yfBHUZuKcQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018098150de0-f78e52b0-fd5a-4e4b-8b85-0c181c8caf16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 249778e296d22bc51cbc0c08cd08d22c41cde6d4fc88113a100d981409e6a54b
Date: Fri, 6 May 2022 06:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651818958
