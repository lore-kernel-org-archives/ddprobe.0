Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B77A7C
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 03:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648870678;
	h=To:Subject:From:Message-Id:Date;
	bh=/0fnoTKwbQx2vV9qTng60ZuiT+XPmCbifebPvF57Vqg=;
	b=DzZBbS4ae1N0YHeJum8dCsZCExXG+RA46AH6O2bYPwTMabOKUwyJinTJgXnZUuFE
	R5yx+R05Swh0o0B+aWuidhk3kws0RkdmEK3448lz4XQAaI9fQNC7oTrWiZtRbkztrvH
	N5KDvH6wiMaPo4Tj5RV9FkkSd5IRoWirp1IP4JU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648870678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/0fnoTKwbQx2vV9qTng60ZuiT+XPmCbifebPvF57Vqg=;
	b=E+z17duNdhOpRT3eROnXtE9mFc+AURzlSmcHBQw8KTD4MhZs+fuwF3sRViSWrolW
	rAfeL/ELG4yWOMnRXHJDY35RCjBtp+AQeAlpivK3FI7mEgBUXxMHjLvVYXw/p1sQUru
	qUcGmkTnwkC6rUUUM/jf1kTfloYKl9Qw5hJMFWcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe859df1f-d07c4d79-6724-4982-89f9-77745a5937c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f13966a7b6605a034532e6536d2c4b6f35b5ae0ea4f870a9c189a1873cbea98
Date: Sat, 2 Apr 2022 03:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648870678
