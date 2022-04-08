Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A36B2C80
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 19:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649447578;
	h=To:Subject:From:Message-Id:Date;
	bh=V0auDZyMG3QhzcTrdDd2ftgF/Cd0XsNjTY+ugiYraN0=;
	b=Th6PbXVNJ++msVfruLLTDU1rcbQsXX2QkeRY+aFiBYj7HBr7MRLrV7SiYpTRPPG2
	FmvNRWLv3YKzEMBOzQCEv3vDKj0QtNA7pTuqAULX1f9MhtY/Op7KhAYnAERSYaZXrHX
	PshjLK6ZGN5H5xEt+4maZFJ1PJcfe4IUAekSI56g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649447578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V0auDZyMG3QhzcTrdDd2ftgF/Cd0XsNjTY+ugiYraN0=;
	b=Q/hTq7t8Slk+Ov/FP/r+AtJ2fFwrazyXjMm9/hb2hf27PB7EToHq52avDSQXPY37
	SsJr3ln+9Ks4VsrhEwbPB9blSNM4YhPZUJRiF+lqNMq+DGI5uPkqk5Wyp1Cs2lNCf0X
	HBxVtSaUUBOE745EDi2ZHZPC+bkD0eMnxvpo/Jjo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800abcaa9f-53b44f14-857a-4d37-a304-52d6e6b8981b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 457c902b49e116621b6fdbfa439d0094c4f540563b25241f134e6c64fe568178
Date: Fri, 8 Apr 2022 19:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649447578
