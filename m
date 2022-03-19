Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CFB7A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647658885;
	h=To:Subject:From:Message-Id:Date;
	bh=taufYiGym+bRApgNF5CI1k3BEjnJBGLyY/IHr1DgmBA=;
	b=USPm1V8Ogb0cF7mJdHPC52w5wQjQdHo/qey4y+7tAB8wTxNt14fSAZPaNDzRzolc
	8tiH4fTwNDcN7MntQ8DkTLdtwp/jxOf+4I/DGEq65EDOVB9MOs/q4MKMMuO0sUN45sB
	OaaH6IYRPY/SGxJmA9ZKvZ1pECjwlJ9ZlNCt3eb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647658885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=taufYiGym+bRApgNF5CI1k3BEjnJBGLyY/IHr1DgmBA=;
	b=kWtqXiOgzTF1LO8D6edUU7DOyGgzyjJLkJgZRf9T4zcmn7TAgfNYvNEhu5X1eYve
	LI8lCz8aWzROwBtHImaS3I6uWBCeL8cFi+4ZMLT246spWgtpLN+xcTz1PMocnlV4umY
	7saHCZaZIHwIm4/dZSXWEmue77VrYO8/r5S1nSmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa01f5ef2-f32ab263-8dab-4a29-bf89-a9193fc52799-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 419bbbafc5232b2280e3448c9a5b58ed7481778c98f9ed859186e1d27c745eff
Date: Sat, 19 Mar 2022 03:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647658884
