Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23CB7B
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 09:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649928478;
	h=To:Subject:From:Message-Id:Date;
	bh=1Jr5Cq/G9NQ7pUtDTB3BNQcZ51rqOHccpnKp4ovWT/o=;
	b=AYrS7EBrFNK52Wc/ubCAOXD0xU8wccky097GBTqqGAKqfWzecqEIHNs9ED473AZJ
	hoG0mu8BUz7OsAlyLI5xdGZWgvoLzDFJjR1xFJBEUk1wAMK5OVhhrnVsIEAApSRWi2I
	uPU21NNA1AodusNaVAARm8LDcKg5PjWca46+7RWk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649928478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Jr5Cq/G9NQ7pUtDTB3BNQcZ51rqOHccpnKp4ovWT/o=;
	b=U5enlbNjNO1aUm6ECXnEOUnYbF6k1cc2A5ekXCFZC45ax+h5KnQJy933P1r0YWOm
	Nk3uFZx8eSaHnI9A85TA3xLvYVVj+xFlWN0oiyk6+yKtr6VPgWrXi4hnWriy2PwNr6W
	ax6s0D346dnZV0RxfTTP/3Pyt7n5vo+IZPkzcJVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018027669e6a-e53dae3c-5b2e-4448-96e9-7d41f31fe6b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91f4b588e1b9daed72d85fe0acac490e59606bd59bc0665dd7e182d104c1e9c6
Date: Thu, 14 Apr 2022 09:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649928478
