Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7B6138F
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 21:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651182838;
	h=To:Subject:From:Message-Id:Date;
	bh=DgmXUmXV9LIHb8bWt+K/rdixLSjBMa3UXXIG+zuqZmw=;
	b=FADu22fNRTNwqSCbknJEOm7n3ijw9VNAztT8HkPjQ8JxO6u69V2SfsCQsK5BUL4O
	0wriu+znlSgwiEasBZg9mpS304FNh0VBNovMTPb62sG/kuk5+wVcbSS0jzO/fB6F/wX
	d6xuH2yXws6gYB6KYp8KUKGdSE43FP5YylC/E4k8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651182838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DgmXUmXV9LIHb8bWt+K/rdixLSjBMa3UXXIG+zuqZmw=;
	b=YrKT3GqiQLM1uGj8e4EwD5hAgPNLMhqXi/mNNGD/OvhqsPgQ0I4/km2ACmaSPwnW
	8HuCb52iR90p1474cGaJ4TpoIXx3yq/6yZDZGPLIkfIW0ajFlbdwL5sTgOSsQAN7GSD
	WcFwGxr1i+tj6cYibTfIVUJXMibiHiLS+TCrR/9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180722aa236-f5a74fec-84f0-402f-9855-30ebfcc80a83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cff5a5329fd7db25126b03611320cd57e46bfa05761ba57f6d69bf51da9bf863
Date: Thu, 28 Apr 2022 21:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651182838
