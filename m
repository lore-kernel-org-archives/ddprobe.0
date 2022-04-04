Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6647C
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 10:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649067898;
	h=To:Subject:From:Message-Id:Date;
	bh=i6I6S1ioWSe8jbl7PdWQHcPs1vxayMIT3CTSktliO+g=;
	b=jQZ02mCPZ5n7aeE7PzGZWGsbKkBLs+TWdnc2HFhWG1uvvq3TPhxVuy70I7eI4kkL
	C0URXXR7AN0S6+qj/uo0nxqlqfqxFQyOXjPLNSL7Fuc/k3yVOlWwyt57XK5mn1xwqHU
	Oz0MDd/oC6QCGwT0Ur8RBeKKGf7nRz7NvDU86Pps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649067898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i6I6S1ioWSe8jbl7PdWQHcPs1vxayMIT3CTSktliO+g=;
	b=ipG1U31p7Ste6rJM72tEMtfauPhNsekMtxduPIgHJfG1TRKtVnXHNREaCJ/CKIcQ
	Spf3fFAlaAT0L5iF75hqguTSBNRbwrHtrrwnsSb5MMAtmGtrDpNfjFaQK1CRgJxqU12
	CKK/xwhomGhPVDuo3mgM+Woy+nSfnnMPmEyGTOCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff41b35bc-a644be21-247a-4050-9676-6f2c73a972fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86bed4af23b7c72eb5f0e3993abd54a7326eaa6ab16fc63d655e80031ed34233
Date: Mon, 4 Apr 2022 10:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649067898
