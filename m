Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3600D156236
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744658394; cv=none; b=Ohf25ZQBjsBqKKWF84lI0H4z6YP2WEu+4omHBkY9bj3qcPhzlTKO+h5JNCxo64AT86OEF1tbO7yz8q+aKBoNwuq10SvOwhSHRcjWPXo5FmY3Qc+kP3i5Qnheymsf8a/VMQDyFKL6UQ56hlXnKjYKfwB3E7GzTSswpQG4ntO3SqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744658394; c=relaxed/simple;
	bh=8OpWPmor5Lu/orkXYFZLI5Wo+kN4husZGstja83hHf8=;
	h=To:Subject:From:Message-Id:Date; b=k97w+VdlQdUS1wjg5saM7rqTh2fQK3oAu1Xo1COxUukBN4bB+fLbfrZfrpB2qJ1Gd1gfDWxw2Rx67VtPFp6YfwR0gvDWgfZq+rSaNFbGvexUktE/++/36QiZ5QmDlV2xIP4RlLJtTTcQTlOLu9OK9TSfegwDd4A7aTJdId4+tN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyS0Zamf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyS0Zamf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8187C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744658393;
	bh=8OpWPmor5Lu/orkXYFZLI5Wo+kN4husZGstja83hHf8=;
	h=To:Subject:From:Date:From;
	b=OyS0ZamfZpkTV27TeqJkCqj2Edn3LBTJ/MQJq/m18PAh7UkqhKSr6BDR7zZfZDxjS
	 WRaiRCMzEXhD04JkBH9HSVBJCqZs/1UicPW+oYF0h8lNJXhP8yqDBRLxO59nQK6iWx
	 AxNgy6KccTgZ2TelzYsCjOyNZvAgrb7y6baT8Aji+rwuKrMrPWFaaVxEcItdhzaXw2
	 Ejxtcqrk/BoImvmj1gC3qQnZwCJeoOddvGs1lYmCF0D9VTmr7c596gt9QPMal8XirA
	 fNAJ2Ngd95Rlc3Qj1HMqQu2t/Nr7BCdPq1PAOkFaUBziHRrYOYlvJfsvsdEVCbZ2jC
	 azxD5Y0cb5C9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A74C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465839359.27866.9162981364267211336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa339e35c0ff23effa95f9cf1e6a3b00b5682f48861ecd134879dda1d1d83a4
Date: Mon, 14 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744658393
