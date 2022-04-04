Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB1E7C
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 18:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649096638;
	h=To:Subject:From:Message-Id:Date;
	bh=L8LKTlNYocMJBP/1BBZTij0BDqXiPDoxxjqOMIDijzQ=;
	b=QmF8nVkC+u5Paz0+hMbO/2VfZPVStV2A7mM0ndukRtObIWdcRTNhor0t0GtJNL0/
	kE+yhUMM2oQLGmY04L4Ez7cO7RbzHvBCQtNFtaH8YH43FlbGWI/UQenej3wkUmKEOgo
	QqonHZU4h08QPyd6ORjuCn0JDZt6DriPnplqonTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649096638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L8LKTlNYocMJBP/1BBZTij0BDqXiPDoxxjqOMIDijzQ=;
	b=M/s3jW5o9EANEcIA6ktt9GLmj5FxqYBKI/I2QnJXJ11V7P51rIDXnC0I1QIV8EX1
	2/MGvOHP005WEsYqIwHLGVyXk+EjuSHoa+qhw7JbNxBX1TH+BP50hinm3BHQvL3dZCR
	Gip+SVyxji438WwRSxkmzBYQ1s1Obwcd417V+TCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff5d1bf98-0aaeb4da-44df-42e2-91cc-ef0dccbdf881-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc5c82a5c34a99df97ca232599a503a80310b87ea4657c333dfb8773882702b1
Date: Mon, 4 Apr 2022 18:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649096638
