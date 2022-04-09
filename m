Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57700A22
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 15:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649518078;
	h=To:Subject:From:Message-Id:Date;
	bh=ObCAe2AmpsbL57+HyhC3dvXv5W0tF1GV+sNDjTf5OA4=;
	b=AmMA1+mHm1q7fApTWCuiPy/+tZWMsK7S8d9IXeeVZvDq0vxmntj0etYSibeksN20
	vemwJH1LWaBOqY1E0eNO6rzFn9N2GkLBJ1psOzSmHYAicNlePWnh4oRj7z8qqDl3Soe
	tKaYivg8oD5B1vQD8dWy/JVwHJJvaVdm0Ntc+Q/8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649518078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ObCAe2AmpsbL57+HyhC3dvXv5W0tF1GV+sNDjTf5OA4=;
	b=e5okt8oG9O50Q/TYEqpYijDibDeGyi+EYVXQkFRC8DpjAkwduXt2XPHXm9xFgbQh
	tWdE6243Y8iSNYRY2QNdJDeww+r801uM7cbEH8DLr4WA8sYupH+1TB7OSCi+f11+0tm
	38jU1W2WCWHSNUShwuXhnsRWR2Ui2BXiwfbywcJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800ef06918-83d1bb66-7b48-4911-889d-9a0a1d97030b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4de33e47137def0ec787b330c52d96a6047a93c23ee852e71466170ff8f38d6d
Date: Sat, 9 Apr 2022 15:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649518078
