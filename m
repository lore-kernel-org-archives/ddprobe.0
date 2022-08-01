Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5BE7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659331252;
	h=To:Subject:From:Message-Id:Date;
	bh=VfcVYaMxO7jkxqofvVzXDLTg9Ispf+cTmxfL0SQiOxo=;
	b=LBu6O25kna8qrMSVTv5BDrTInAEx7WUSTJLrn6PyuuxnLdBtX0Gkz5L3OQJuylQB
	MUt+Gh9oHFvTG7RyhzFjbuL0wTzwdrUItlh7NmepzSdnPUEX1g5ZIpeJSsxRF8NWQum
	JhygOhHtmKNYpFf25EDASwPbBegCgzKab4hRkTSw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659331252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VfcVYaMxO7jkxqofvVzXDLTg9Ispf+cTmxfL0SQiOxo=;
	b=PDwA+33jcyFzs/XfP9MHq450ZWvmmTpYmhZNxeF9QkkR7UanIQVbFiobSs9f0ACU
	iix+UxaSBBQ5TMdQmn5g1lPqRED+MVcHiw6wlZIToeIeeocXozZPa6CKCmZrhno9IGm
	GrfJXXOEaw+0I9H1cJkG3UuNZU9BBwpNLcF1eYn0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018257d9915a-b340b423-77b9-4d32-8937-da23e2ff1fe2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27fd70ed8e5ace72f7563fd7ff91de44c3eb7f0d4b31d90f78ff5ddb2ad5f081
Date: Mon, 1 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659331252
