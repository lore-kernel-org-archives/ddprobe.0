Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06977A
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 16:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646066785;
	h=To:Subject:From:Message-Id:Date;
	bh=W7Xd8hon7CrtzCXMLr6iOwNV2rqZWuoad9MA4DC6r4E=;
	b=cq5ghdjpW3J2aQDxArC/kkMFARisr3Lc4zrXqEs2d/GeTimRsjKnVF8hHIsfH0Do
	9XPsrfmhGG0VMiKSIUpOTi8Em5aqXhlNOPWlP4gB8wzHrWU98Zo2QGJqhZAU3V/FbIj
	bra9rg9dw7Usbk8ui3VbObioANFGH7s3So5gFRy4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646066785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W7Xd8hon7CrtzCXMLr6iOwNV2rqZWuoad9MA4DC6r4E=;
	b=A/4w0aTuzExefX0uDqVQXLT6J+bBwPs+vhfKqjYGSAyM43gqKlefGBbPvMiji1zH
	pPUzp1v+FYPd9gXJ3TCHpepHmkubLrtrrn0nRmdsBSCw7VJV54Jins/og5ZCHy6utd9
	rAHiEK3wsdjrIanMosAEA2JwfoGYnEFMvMJ5exrY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4139d9e4-42f53536-f01d-4f15-8f48-bb1938475ae4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f509ff79d552b071bf6783be4c262f75b1d224c900afe7ba066739bdf969f4f
Date: Mon, 28 Feb 2022 16:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646066784
