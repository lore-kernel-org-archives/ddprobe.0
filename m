Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9A0623
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 10:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649413678;
	h=To:Subject:From:Message-Id:Date;
	bh=DtoiSsmrxvRM3D+0ET3wiXJ5N0i7M7BVUfbaB7XFlFI=;
	b=S8mwwVWXmhxUwvIZFkds3ARn4Xqt/oSFROHBemdKoQHAgR6zxpPbPsPxOr4gLmpJ
	sGeWv7LdvPe1zEAEYAkXXJkn77wQ39elPaByq9cKzQcS/bpvPp9No4bAWXRlgTf+N2j
	+kCUiB+h5dLUftUpuEJrw7BVDkgmLzYCui2wDliE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649413678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DtoiSsmrxvRM3D+0ET3wiXJ5N0i7M7BVUfbaB7XFlFI=;
	b=UyDcyBAFPhEd5B3Ym5+6XCwBkxEztzMtLz5NyjcnH28cwaBREmDnC3Sza8Li8sXr
	BlhfJQFIFHOLjACobpgsAEv0k4D5vy55M+Uqr78BnYfTUu5nGd4e/8fWoWigqzSIz0G
	Ng4n/RtcL/ClSVllbEkjj42cfBG1NVCNlM22f55A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018008b764f0-dc194657-b07d-41c3-b74c-e022a50bae76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5c51faaadc267dbad429995483192b87a0e495c1af3165f609d314318a02e01
Date: Fri, 8 Apr 2022 10:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649413678
