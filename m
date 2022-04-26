Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EF07E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 08:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650961198;
	h=To:Subject:From:Message-Id:Date;
	bh=TOtpjz1pztpK7nGEa3qCmQrBtKuhnLFcqwphlQpb8Do=;
	b=bCIgGwmWDnxQzxmzv26LU8ebDUKbUIq4nd09ZGrqF2RZr/9mk011pBZYcPIjz3y+
	S3YmXIbCjQlydIhS0oyrX/sywvg+UG5eaKLtvCp/vitBNraRdZsUUJH6wj30Bb8WNr9
	+QtMv4TTzh9/1OzJmR0F55Bpyn1J2+6DuClQFN8s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650961198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TOtpjz1pztpK7nGEa3qCmQrBtKuhnLFcqwphlQpb8Do=;
	b=NiIlUa2CnShdOMvJmJ5myO63g0Q6S+bEbyN3a1iEZKEkEf65bntGPIFWytU4lInl
	BZzm647VJZx2ASUh5v9Jlv/CNveRAr6tISRsLTuSyt2+3GAoRB1gbWHflbmhxoZQvvu
	tfsqwwWgw7O+A0MEoOKTKtHxMnNtlcMk4sRBQ4P0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018064f4acae-a0d847ee-2e33-4c87-af60-18d9b7bd3309-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6760b046498e1ffa9a9e88bd13f45486f03b6f8683b71a3888aa57c8016818dd
Date: Tue, 26 Apr 2022 08:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650961198
