Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4927E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 08:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658566012;
	h=To:Subject:From:Message-Id:Date;
	bh=0lToPil0A/SSwW4remhwb4/fT4yWrJ9QHV27wsPVDFw=;
	b=ENGbA9N6TC1AVW9VFi2UDSns26gw8D7DlKNciZ4XCl9EetIEPuL9cmEufD16rfcP
	7Jq7A4soxmCLjj+7dhanJMy3t2MRkDESWm/lGjKLIVkq9C8guIkRFsJQVMT+Ol4K6pL
	WT4VPiA//0d55IJ6oaeXUJLKhBDzbIW9R/JG3V9A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658566012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0lToPil0A/SSwW4remhwb4/fT4yWrJ9QHV27wsPVDFw=;
	b=kyzdBwHBH96xx9axJqyQHyw0LvK/orhuRGfOr6K+QZCbRQ1QWrSVnFLVTTJl0nM+
	5hscYivU7Ws5x959a8oTKUV2v40N0fLHokZjiy3bb/sHtstSIL1/cMthoGMseWccaUN
	M5nwB/eA7d3hLtcBDfGL16z6SsiGuqbzRyMpe6VY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a3cee21-058e90b5-e871-4eef-9c1b-996054d67256-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b82da5869ef1bb349789963cfd0ab3b9dd5c1d950f1427b14d9c574cd9301c0
Date: Sat, 23 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658566012
