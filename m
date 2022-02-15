Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E5D7C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644895585;
	h=To:Subject:From:Message-Id:Date;
	bh=Ci8Qhvw0TtBJ/9isXIzdJ/D/OyUslDTsWXgsqqhf/88=;
	b=H9VBm8Pqj3KcuFkKlEHHmZ4zj+emfgacNezb2QsA5ZIhlnearGJaGf92SiLgvLUD
	KmYYwJFwCAELRMaQVQ7hiHFezPbSxCSAbIW8Yo3fUp6jTAq54aPkHf/ijGKgvZ2ow+i
	AxD16ZtCF6/WLdJj7GucCvXHwVjDMBDDlrpxkfW4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644895585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ci8Qhvw0TtBJ/9isXIzdJ/D/OyUslDTsWXgsqqhf/88=;
	b=RBxWEly3rTx1Fg1mx1GCuUI5EIUaQ4H4syILXFL/aFJAgMS4MnqnVKMdl+Ucjy1t
	oG/h6JcjFsLwgSSmK2eg8HFMX0A5QshjNJh+k4TGm0KqvBWQEs07xRqeWPU88XDqumK
	V/07qU+a2F0HGItoMQLrg6b2Epj+fRPe4TRH795k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efb6ac233-d33688f0-86b0-4b2b-89d3-3c527eadda62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7d8710954046a533b5b2bb22881e691e463a0077cc03c7ff53e85ce1bdc31ea
Date: Tue, 15 Feb 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644895584
