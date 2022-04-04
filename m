Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0329E1FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 05:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649050078;
	h=To:Subject:From:Message-Id:Date;
	bh=F2/5QXHxdrLrPG5Q++V4TIYkLRa5/WShakXhuH8Hz+U=;
	b=YHZnSuS+t+cWQajQKt3CRQpWP7chwXREmuW9+9XAcZtdmgaNeAk9VnVyhnCUl1HK
	CTm+VLoODgOiKMnIvtoi4f7k0rujwlY8qFog8NCecFJZRIrVOuGmcNmENngyxfiilO0
	AtDRO/kzl58DvUIhcazbOsKYdw+OFifvaahIZeoQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649050078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F2/5QXHxdrLrPG5Q++V4TIYkLRa5/WShakXhuH8Hz+U=;
	b=BbRpsOSJdVlnt4kKOR8iGhGd55Hx+kiffAm2etJwLsoH5SZyuTzTuJ+ZnlbjwAMP
	pNkG+Z4tL5Kr6A4TB9MV3dkdzxbHPZkkK46Jer2RiZ5YF9bAUvU5K3vhMqwG7I3qZYR
	126+02EIwFl0YwDcxR6KG7rnKrzmw85K00fQYOe8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff30b4c32-82f3ecef-c5f8-4fb7-b569-388c385594be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7b0ce3c9c508faabb86dcb96b08d4e94b374501a76dbffccbd0355aecbdefb3
Date: Mon, 4 Apr 2022 05:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649050078
