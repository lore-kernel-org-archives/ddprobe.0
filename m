Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68AA033F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647789084;
	h=To:Subject:From:Message-Id:Date;
	bh=Mdc0nvhfvCsjavcyFaZi6e4CSQo3z55jHV49Sx50Rg0=;
	b=WPtBlr83LPMRm6Vc5yyjikJNDfHozypNA36i+gLfPjhN38gftLXpHe9BM5IxmtAb
	11vsOi3PjbWuZeybU3i9lLQln9WveyyFf5/WmZHc2gOoLxow2Uwna9438i7j61eOvqJ
	5fdERcXX7BcBNG+b8i/pxZvLzBrzzvFpuXthn2Kg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647789084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mdc0nvhfvCsjavcyFaZi6e4CSQo3z55jHV49Sx50Rg0=;
	b=E2Seof8HJWYXeoI715+HgPZy7I4IXq/b2kSJ11qg6EJsHvJ/WMscCuL72DLZiIQu
	WQRhcQSZP0rSTLGPm+5bX8eLI0JL1JpYuBsYsaN5a6iQ3EsSvS0SAEGFOk1HFBL61mT
	EEObq2uw5Or1zMkYp+VByicE5jJ7Mu9TEznhprqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7e21049-df1317f0-4a15-4ab4-bc54-6c46658c35c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef2acf41e2bf12ab9f29f05afa539e98c7cf05924e2d0dfa7b2b2d2e51373361
Date: Sun, 20 Mar 2022 15:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647789084
