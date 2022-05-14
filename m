Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC6736C
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 03:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652499899;
	h=To:Subject:From:Message-Id:Date;
	bh=+KA7/IDdCsPSkvEHXEHBtx8FbpyjxZOnfdZ5ZGyriwM=;
	b=SYF4xgc0S+S4rMrkYs3Tuy5ezYHGjsBhbhMjPOCjoKVpSrjsQ5pE2qUm9Y1WnGia
	mon/Mh5f8ZXJ0f/KjmjszYCIhTTnTBQ8CEMtwO6Ouki7MUcqad5AtuIHc3xzB3WSWie
	6oznCUa4GSVW3gimFEuUSW7PaLDOCRG8vJ/9I/PM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652499899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+KA7/IDdCsPSkvEHXEHBtx8FbpyjxZOnfdZ5ZGyriwM=;
	b=Gqkg0MlWaH3dyM76vCPd7bPLY56FvBlqHxJ+9AGkFPI7MVKmynvSYJTRKxdLO1j5
	8++DTsWrTXnFoJ0xdL0WyFVisbUisL7nT+H8t12xN87Zk8zlBAechCl5KC9ZsnzSBGu
	JF/W4k2W36LA2Ytdh7QhMdG6o3WcTvG2rlwwQdb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c0ab637e-f020bfdb-4407-4a63-9dd0-ee92a3c6092e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a114f2be053c40ff4aa664a327512517b29c671a745b8eb9806bc96bdcc78a37
Date: Sat, 14 May 2022 03:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652499899
