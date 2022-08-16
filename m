Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BDE1C04
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660647652;
	h=To:Subject:From:Message-Id:Date;
	bh=ARfdlg3JT65ac9oWaEpIL0v+dJh8YU6L9q8X7CluPtc=;
	b=Ajbb51jGfg0OYToyvJ2yMj2gDzmHyV//0jVa6U5NRz+7+v9djhXGMA12U5KYT95Y
	1oGl99EkNj+ZvxsdUtEemWekem+STBSukKPPQYnoiqy98/ctHaIKBr19mKfwDOAGF7K
	bWe2iDLsdXBcEdhXRxT8uLR95dCKk4qZT7T5iLMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660647652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ARfdlg3JT65ac9oWaEpIL0v+dJh8YU6L9q8X7CluPtc=;
	b=IVEAFdZST7RzMBc1D0t43DvcvUjFloSKabfKG8alJkUxOkipK0+RVLGP0t3AXn+t
	I2w/lrXVuSI/RMhlZjuYXgRERvmPDg0z4Qx7o1wLKkGIS75+lld+cyaOZoLRAMycxX7
	N4GKtDcHMJSIMXgOtYO4ZYemkl+S+T/qdEBVI6gI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a6503d18-3508ad01-08b4-42ee-8b41-e401ccc0ef46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df2f11906458a1bb8d75e9444508293e7b88bda0aaccb4c7a708f06b80e686bb
Date: Tue, 16 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660647652
