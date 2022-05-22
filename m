Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E15B833E3
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 20:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653250440;
	h=To:Subject:From:Message-Id:Date;
	bh=jEbg+NFokeN2Vg5cIFS/7wi8AJjWhMh38Yd7nP4g4qc=;
	b=EHf2dWgjHz7E2Iiq3sQyoPX0oeo4vfi10RUDmu3NVn9aFrGek/BQAKErV2G0GE5j
	H7ylY+FtIcqGqVwIFR+fUicPlT7ixf8VRYbDXXw0z4cr4hUpkEahXqQiPtQ/b9vyVRs
	cpIB/2Wey9d9i9DgH0wPhtVoorfEn0gcYG28BAQw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653250440;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jEbg+NFokeN2Vg5cIFS/7wi8AJjWhMh38Yd7nP4g4qc=;
	b=NYrXyd0uJDUe4wQDKy6UhhLAH8eq3PQgDyhqyT8cn2NFoBr76M2fc5ehCmTh8EKc
	wCJQvPLKgfIvjmmRQTHonzJzxUxW7wBzraMNd9T6ulXURpBWG7CinI++hIo8sDkNJPz
	TDv7CEqE0kkfJCVenPe77zMCZuInp1wiK75P7S9E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ed67b862-15bbd41e-602c-4bea-911e-a748ca5cd4f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d350556ea99b5d28f7fb3fb2512e49edcb2b1dd24bf10a4227b4b949181820e
Date: Sun, 22 May 2022 20:14:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653250439
