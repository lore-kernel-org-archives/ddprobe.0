Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398BC33D3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 22:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656283012;
	h=To:Subject:From:Message-Id:Date;
	bh=CRZbV2kkmT9/WaE1zF71kQC7GnmO7KPTGONcQoPsTKU=;
	b=inBpRpUzhVoTfZTUCw8dqK9FoD/wTxUo2LzMiIaFfNQteBufzlt68q41YCCY4zlp
	JVljoS8pKde88SNcN0SSon+JggY8HtwyF0cBRWhXFn+PwNv135fRFRz5rHF+s//m/Xa
	KTIywr+Zl9INqPN9/hr6W6zgnKtmrnju8JuzDD6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656283012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CRZbV2kkmT9/WaE1zF71kQC7GnmO7KPTGONcQoPsTKU=;
	b=IykH+h78lk6aP6CHbFgRrLLg8+Flg+qpRmFfRZs9ri4rQgPfjud50ugGXbZ8uQVm
	N7IW1wIEZzeZD7+kJHB925bbLsNdJvzMv4XtpFb7rCd/D3lsj8ULI7l9XcEdtl6Rx9J
	3Pai1lRprTV1l1+WS3bfYSOgWMAq9tLIl2ShL3jA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a2291cb6-3437d3ca-ad36-48a7-8cf0-0f77fc8d387d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 664da1924fff4cfe16802c0b87e4147afb303577a1255b2add38edde0a82703d
Date: Sun, 26 Jun 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656283012
