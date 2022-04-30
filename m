Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93CB1853
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 11:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651317418;
	h=To:Subject:From:Message-Id:Date;
	bh=jj2JdJCuHoSaH84+1oo3tnwG2MKvKNfFgxCmMDr756Y=;
	b=UGqINKnBOZDK6xHuECOmE/3YwU/lt5ryWFZvbGWRWYa7jrAw2Ms4KeecegOVtrtz
	/h6cUqNHjSmc+JYPlbiHQ3E+yNQzZTIOxUAl7XidRvuV/X02MzCrkC0RtVYXdCMJrs9
	w+z3B9w/Jzz0ZAM2+5jfhNz0FzKU4uOXtQQiiiAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651317418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jj2JdJCuHoSaH84+1oo3tnwG2MKvKNfFgxCmMDr756Y=;
	b=bY9qhxpL+4cgRouCJviSHbIlxTrVX4VgwV0zFwlzCT//XuUgr6rHM0TlzOXAEQiR
	mDv5MN8zhtMzOicY5/u6/IH37jX2dAWP115X/1Dml6Jge8btT+AD0KES/OEDhd8V2Vo
	Pw+r/MfmfJH48HFupofG/csyFnbYXLbf9Fa8chqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807a302936-ea9d6e6c-0de2-42f5-9bc5-9c2dea7a53a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 093ce2155717d46e481d4b9c43712ed94218c50163394811f66af3f570786cf4
Date: Sat, 30 Apr 2022 11:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651317418
