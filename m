Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801197A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659058852;
	h=To:Subject:From:Message-Id:Date;
	bh=o8xDPR7nKm+vu4Kva7GQYyLXU/sOdB0cprDCyXQ8GGg=;
	b=FCMknbLsdbUCRmi7cWKkvT4IKxHXoOVWEO1xPOyXADj7k2jsaZheHOkKh6VlzAvy
	ir74Pau0Qj//F3rW6U5mW/CQxLonGs2GoQ9lTQJ6UmDOkddwquOcPkaZvFx1hLmfqjy
	Oa871tkc80MkMSwTnwG4P0jQccA4d0OTJjhHmZa8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659058852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o8xDPR7nKm+vu4Kva7GQYyLXU/sOdB0cprDCyXQ8GGg=;
	b=CAwvUIYwJdWaFksVlGUGG4Z6BPDgV9uXCPdHo77MvaEFDiDgCUJZGANj7yfmbfT2
	ytJje8oH7leqVASBd8SWR/IAzJJNYkcLUDN+PmHzrfPUrHAxu5/C7oImLD+lLiq55NZ
	yxYrwC/2Tnc4VS3SD/5i/FO6JjwGmEW+HK2tMmGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182479d12d6-4d54775c-fcff-4b36-8feb-3a11de7447e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc0a5c789e7f7d35aab7f01780f0f8eab3bfb1a7628632d481e9e8190a5ad25d
Date: Fri, 29 Jul 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659058852
