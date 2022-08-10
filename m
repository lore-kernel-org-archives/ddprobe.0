Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5EE28E1
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660149052;
	h=To:Subject:From:Message-Id:Date;
	bh=bj+nV7xB2Y98LMRttwHRWAHDmj3LGZVxBfhTh7YfHrA=;
	b=bSGqMwhedNCej6cA6pY+XG0rEhLSWyM66IN2WKK0NwegghivaHQH7QhGPsD/FrzH
	ZmVe34BJJnvSCrnnnHJpExejbT1faKl+SrEZnCF6QXV65QJ4pupa3ZHOfYDZZQlmma5
	F1BB6dQ36cYNgeWURqyzqw5dhEyMdEx1RuMpaiw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660149052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bj+nV7xB2Y98LMRttwHRWAHDmj3LGZVxBfhTh7YfHrA=;
	b=FwPw6p6oMHnFZVgThJAx3npEjr6rbuZcVyYK29DcqXqdFHTVrr14O8b0YybStVuu
	yofYKyave2sJAowB7VL/SJHWj0BqRYmoKydhN3fmXiQEqNBktzU5QYw8DNbrLFZecQ0
	lL6+geZeuuwmH+DOJ3mv3MNFPDankyEOGOakqd4s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828898349b-f0796e0e-0c6c-4bfc-a630-36cb49fe1217-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2459eae48dfbf6dadf7f4ed7b643a98c182a9c1e11d84de6d81f2cd154dd1c2
Date: Wed, 10 Aug 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660149052
