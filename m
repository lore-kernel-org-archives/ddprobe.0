Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2656333E5
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 19:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651087858;
	h=To:Subject:From:Message-Id:Date;
	bh=FH9QLkueAXF9XM56HJK+t+nbik6vfUj6TfqzxiFZ+AM=;
	b=eYaXZPV+3C1xXlg+0mI0fz3Ew+lqEjJLSCqrqtCmOVDYMi6dfO3RSdwdja/OR8U7
	GvbFLiAJw7eTf9C6fr4QG/UQMplci60UycXExcabw8rs6hehGjDFvwHkEamELtRTzl/
	28Rlw6K5aI9xEtE/72F+F/4vsFAstoJFUj6fHemU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651087858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FH9QLkueAXF9XM56HJK+t+nbik6vfUj6TfqzxiFZ+AM=;
	b=HCAtJH+HoW+Ta5idpQZiY4RusmxnWgXtKTndodVZ45qP+CEeVPHG6F4adT626+zs
	PnwGIwxYbmpn1ClIOfoCkTdd3VQKWEvY8ydzrhORXcrPHHz0aIkXLiYSul4hZKdAIG/
	wwIh3kvoF/SbIqZb5mB4UOtK29y3vDlWgWbx+USg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806c815ab3-7df811f2-57ab-4c75-8dcb-e675b0c0a865-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 540ed3bd872bfbf453756bb49687ad2fcbd1e3d9dd6ae05042459702b072edef
Date: Wed, 27 Apr 2022 19:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651087858
