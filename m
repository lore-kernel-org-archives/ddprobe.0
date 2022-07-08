Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D27627
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 01:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657245412;
	h=To:Subject:From:Message-Id:Date;
	bh=IahCFFjPmh7gOiqMc9Gx0mg7+h9tik5aVNbJuZNOFig=;
	b=XABzTLRwAUDRESOs1c/oZEPqOhnxba4HpKXL3qHrSuZL6aD8pIFK87CDfgQerX7n
	eEs3aR5r65EJREYjp+xKsilNHD8BZrlj9GJfzR7O5Pt/MUccjA7dR4YLHLflAwjquAb
	2Q3+YT20oiQqG56+De9QNryNZ+QxqB01ovpdaTOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657245412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IahCFFjPmh7gOiqMc9Gx0mg7+h9tik5aVNbJuZNOFig=;
	b=ELTSnlSmvLWgHpudASNWgOCNdVgqtAotQZnuiBpGzOU9MPA2PA/xBoW43D/TMYgO
	EwlbtR16+Wgy+jQ2/T7K/ocHkeNtVkp+F98oyX6If0Ny9NVx4ZnlTbYR3gjRLKXae3Y
	alMXzxRh3/dSMBkZXw4CEm0gQRUFLcvUMcU9vGsM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181db862bc0-88d58706-6332-418d-b3f4-144457beeae9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 243339b56ec60b2e24036434e2628ebb02d62601a396e75c9e45fa400d31857d
Date: Fri, 8 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657245412
