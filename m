Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E7A2564
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 15:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649433538;
	h=To:Subject:From:Message-Id:Date;
	bh=acbdkz11UN7uEckeA3jtP+1lQujL90fePoGvk5HQJ2k=;
	b=EW+j0fI22v2ag4hqRrEgLRyycWoAQv4+BdsoC3DvYgd7+HAGbTz87qpBZHbro7RY
	SHgyTaQ7Qo7lQKVBornuca1K7z/BZMkS9hj1gZzCQCKXRVK47TSsBapCP9gEUMNi8/t
	myCdd+l80qlydl7JFpfZ9qgiaFZS8L0hJzhJ02YI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649433538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=acbdkz11UN7uEckeA3jtP+1lQujL90fePoGvk5HQJ2k=;
	b=TohhHhQGlsVfx7JahKUuEit3ZqdyjEy+1mvZ+wu6414yK2vq0g2g8+0NuKj/loVs
	Pcv/5aJ+3La6MyZX8tVvLlZkNFVxWO457W2IuQ7j39xDBvy8uqD0tL1uXuuTx0JFBLM
	bTwamr5vCUogzUfNYIKRxfQ6RHUX+BoyRkBbS19I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018009e66f55-cef5a706-f5eb-4924-8124-d72829b932ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38fa5659dd8d967f753939649028e9a1fe5cd8b095807a576c39cdf7a6230a0d
Date: Fri, 8 Apr 2022 15:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649433538
