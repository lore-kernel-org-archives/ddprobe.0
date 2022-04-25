Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023A97E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 05:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650865858;
	h=To:Subject:From:Message-Id:Date;
	bh=1smbVlNWpc/OUo7Oi3z7hGN8JEOaHtd1+KejgMhCp0c=;
	b=GNj5p11HHYxubiHo231njJgiiKNfSGns3+QJHiGScPUBKKhGsPZqxMZ8zhPAAETC
	/ciCaSHHQbHSuyFOcJISBw8vqzez1UlijHmTml7z4lwBK0YzDVX+rpNxEJLmIeGiqDV
	mDO7IPLdXmfDhjdj3XOWbsvHWd+oicZRUEcAzBNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650865858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1smbVlNWpc/OUo7Oi3z7hGN8JEOaHtd1+KejgMhCp0c=;
	b=Y7BTrsXSemrRH7XDj+9Wtgn7kqjnTK9EaxRrJ6xB1caau6MHluNRWYxLrttxM2f+
	64/Ef6Uqvhu3YzTLnpz4CywIIH+CZ4lxozsKpa6rP6RglxzckqwxFE6wQ+I4hO/HbpA
	1SKsSBLaZb7qU/c0g+TC/iMIfYFcqXj7jtrUpjMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805f45e6d3-9310859b-5d36-4943-a047-3533d7435df1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c483b698c4052f0b47e31a75c8968ed28a431d5e7d3aa508e41347398ad6af1
Date: Mon, 25 Apr 2022 05:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650865858
