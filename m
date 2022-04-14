Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853E028F5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 14:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649945638;
	h=To:Subject:From:Message-Id:Date;
	bh=6738HCseDtDUfA9RDI0hJeKMC4+5sIy/213bC/ZBT7o=;
	b=XSBqRuhiAJB5iGZu1garuIt0N7N9VslY7Zua5/ZFtIUf3q2wX+/ckfwxBwdHOpm0
	TKE14UwxAT+Xr8xPgTdKpatACs5+FCXtnk1ZuVwXlL11YGAGJ6KC9bx8DgaPweebSO0
	qZa8SnhsvrbubEw/VmkhRHyKFR+Os+SHSTeiER74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649945638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6738HCseDtDUfA9RDI0hJeKMC4+5sIy/213bC/ZBT7o=;
	b=X3fqIpJZYObLfp6jjwpqNC3x+vy4ynhwGFb611gZIpaNnysUZkOEi0BL7rbNvlUo
	GlBwc3MYM7uxO+Zm+2VqPQcJB6984Ft7A1tP6AKZw6oOsGo+wTa4sHck2ny/YRkTJsO
	V86ZWUZQ8whod0wSpE/htxDUMLrgMHRfjNQft5Fk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180286c7586-b3ea2fdd-bd83-4919-8933-479d96d12d50-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed39090aed9c88dab68d52500eafcda8a199718c1bb624ff4528b9a71cedaabb
Date: Thu, 14 Apr 2022 14:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649945638
