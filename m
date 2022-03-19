Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBBA817E
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647693685;
	h=To:Subject:From:Message-Id:Date;
	bh=lfIK9uyj4kt3dfO6Sz9ZQufSts/+yVBjAwAa8i+TyNc=;
	b=EBNfMI/Q4G/V2/GTOcJf+DpKfi7LBkdJiInX9LOV3BTnyqncaIiU+BtIKrzFcH3V
	jP6ieO0nFWepV6lr7otQ6eXUdIu+MH0wtzaO5Gz9WXRQO5NYXXDaI/ZU3xjQFW4GAJK
	zZeALCJJiKyQThAOHEDyKU2fILy/5Y6Z5o9X43ss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647693685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lfIK9uyj4kt3dfO6Sz9ZQufSts/+yVBjAwAa8i+TyNc=;
	b=J8OZP97T3zbISjGuqUbxPDXrC1fa8+pef+ugDI5DSUrjG2NiTGLlai6A8Su1/qYQ
	8SxwSGyOzG6inrdffrjX0D6YVXQHBOX46SY6bOH6wQI2HQpu/rvxy23SVAgQx24LcrF
	1N/qOtsQOkdFxbCb3UA/mDVSz+BN8R0XuHeMYgJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2325ff9-8bd887cb-a064-4be9-8e59-e30fb4067d6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 778ee5879e6ab8895c0e637b3cf9504316c966a801d777889e1b98666526f492
Date: Sat, 19 Mar 2022 12:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647693684
