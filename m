Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92ED633C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 17:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655487839;
	h=To:Subject:From:Message-Id:Date;
	bh=v9zimNht22MsBAqUL1xiAGroe+GnKGJO2T06YyZ4r0k=;
	b=FZ5gsepSIQ4F51as25vBxg4IgPHdwy2W8zSYbNvIgVhYnmOIzgVuuLEGEPJ88Bb2
	Mm5IuMsYKgKwM762fY7RhKbaTriCHwYczbLWctWLm/LcjZP67eHSYGjIce+zV/cFFsU
	8YjrJRSElnaoL9mqKFHKFZROJznwjHGzLOedRVN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655487839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v9zimNht22MsBAqUL1xiAGroe+GnKGJO2T06YyZ4r0k=;
	b=C5CDT8za7XqkcFUv1BMJDUv3rT6+H4duIq40Y/YWMEZMAMSq+LRvW6IXAa5JBUno
	9oDtE6zhSeVz95EnknhJ9u8I9Ykax2tUTu8VjkdRoWfzLs8ZWmYZMDFFhYAdoedRJX0
	KB/2ymcHmELSf6Oq2HdXUTawPU8JfZnGT1xu6xuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018172c3bc5a-538b7779-dd55-4b12-9cbb-228aa8071f0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aab035da215a4a94eca069f535d6179212d360d260a5aadab524b185ef6b4d01
Date: Fri, 17 Jun 2022 17:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655487839
