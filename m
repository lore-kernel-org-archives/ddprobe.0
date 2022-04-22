Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C76528E6
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 12:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650629158;
	h=To:Subject:From:Message-Id:Date;
	bh=tF0d651wa5dnhhdkX58m/TQG6Y4MY1tWqUGRbgyGfac=;
	b=jloGbVhBNwn9bVQ+JclRSo6KozplT8JnVHVnPKLDSnJH2HELCDUk4Qct/oh22XtB
	YdAqJ3aCBknezlEVH6ZK4d84iWhYS6QNc10E49E0NIK2QSQWJPaqVCuV5SpbnIJcGwh
	QOuMIh/ombDjgEDjJGcqdVSKlGDqeU551Z6ALxLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650629158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tF0d651wa5dnhhdkX58m/TQG6Y4MY1tWqUGRbgyGfac=;
	b=PSKaSnfVDW1SO4+IPQhPHsPZem2SqsioecssBqs3eJA7Pkx/d2FmYjrxn6vw8BJS
	IRUjsXszFXr/fnQBVQCh/+ZdYmzzmG8hBEjoXwM9cffbVQJNSrgXR7VbtjaQSChDsVO
	OZqKFg22w7/4iS4ZEvCNg+wUb0wzIQHYsjgyRtJc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180512a2583-69cba018-fe76-435f-aec1-045b3264941e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62c5e8355b371fb13f802236acd65de48fbfb7de8d86d23b397e034cff14daa6
Date: Fri, 22 Apr 2022 12:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650629158
