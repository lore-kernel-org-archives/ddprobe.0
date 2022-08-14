Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F62C7E0
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660458652;
	h=To:Subject:From:Message-Id:Date;
	bh=pn/NEPjjpxtS6dBsVWbM8FSsBuqPutzhnVqjVMmwtnw=;
	b=jzOXvclNCXWtQdbGoxQ6XSVXvXfAatvwVg9C4+jkobaB34R9GiTKZfIMgl+vr/yQ
	QrhXr5W1JVQKDqFC5G//H86Rjm2lgVkEADaQ93ezWWz6nu9S1cx/+UigZfVhpOG/mWx
	NCGu84ZUk1+5kY7i3FW+V7ZlJFEPkpejl+82rlPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660458652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pn/NEPjjpxtS6dBsVWbM8FSsBuqPutzhnVqjVMmwtnw=;
	b=aeAORunDu3XFWpk2nizBWD7HHZywJuM9gB36JWg+mH0kTRq+8mad2o4m0QL6/C5q
	ojOKrC6ssfsFtIue00MuxFHnjD0tO6gdglHBSQNZ5xUkMKtnxUBbm1HTI/b6mRvj7TR
	fmGLUSbSfg0udxFtBNed2Jy1fackAhR1SHA3WnUM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829b0c5380-e2e7ca08-ebc3-4b06-a57c-f90af69cc06d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73293329dfe76c93a4ab939ddb6df95a46d9a011ab10cfb543ceac35650577ca
Date: Sun, 14 Aug 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660458652
