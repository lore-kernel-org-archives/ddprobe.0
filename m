Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93DB13663
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647381384;
	h=To:Subject:From:Message-Id:Date;
	bh=Y5ElJASqIO0Bz3jp3ESuN6UPknav9Ph6MYn5jPkWKRE=;
	b=fW291vY42hcqF2VsdrfjdfvVKzP9NqZTZi9xOKMFuF+VUEmvB2eWgaWMBqwpB3JO
	549E5x6GHKOQOzxwiLhphPMP+ZKlCFxrncMKgmBfoqP8X8SZ+w5Dn4LuXvKyAEOyxJV
	aG4kdVXLXtMQ+1mOWFI/nPIJ3I1Kvuy+CiRGRHQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647381384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y5ElJASqIO0Bz3jp3ESuN6UPknav9Ph6MYn5jPkWKRE=;
	b=ECNttkj27GC2Wd0o0X6hb7WFTm3PMPQ+m5TIZOTEqHZWZwFxzj8K8z2QDuRFgkeB
	bA3GR9wZV0hdmtR/0CauBd2n7N2NgSPA7fRFNwKd2a24Bd7DKyPBJcZkQuVKhFGQK+l
	l3+9CkujcoVEJpG8UjorXTL8drZ2SP0pN2cwla8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f950e47-3e9f0bb6-b467-4c60-82d4-fbfd157e7692-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53309d77a1268bcc5a7008ff6d0654ff4afe73440402408f1603a4e34970a502
Date: Tue, 15 Mar 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647381384
