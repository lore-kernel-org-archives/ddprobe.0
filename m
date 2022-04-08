Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA2E366
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 05:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649395738;
	h=To:Subject:From:Message-Id:Date;
	bh=ikBWAksaH2uyKRGhgYCZ7Lx0nEqe4UYbUMKMTlqXrTQ=;
	b=IjZi4DnRR+aUXusKJi4mC/ed02VAu+vILZ0V6ULCNtOMw7XwNDNzHBkV9K7/CKoJ
	KGA85QRFdG9yhg+H7GIIWn7ULLzgJXkhsDfBsHXE1LvrkC71nXi+wtD02YTXkXOQ+rP
	O5VvwSFn9DYtJJi3HOq8u/gQNCmSR4n3oLitw6u4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649395738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ikBWAksaH2uyKRGhgYCZ7Lx0nEqe4UYbUMKMTlqXrTQ=;
	b=IloTxqLU0xcylUyzc9gL9bNrT3lrMUNBKDAPK3DHDVMoFSyTmLO9zJHvQUnc8NNG
	KukN44hKHnmur8oEpEAZtbz5SQOkr0hUHztTrAAQSRTVh28kqWzXBvmIYRrUtqvt/Id
	hPQRQLSHHzp81u3mCs0pBHK9jSsWEIBSdUKSf91o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018007a5a6a5-a8e4212c-5a09-4a5d-b01a-54d691a5cf03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f85affa3a20b87d35368f8381baeff7b733e77e7fb5760c7db79b17afe671328
Date: Fri, 8 Apr 2022 05:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649395738
