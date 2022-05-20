Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241367E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 15:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653059159;
	h=To:Subject:From:Message-Id:Date;
	bh=S65c2R6NvnMIHiapKVsEEHjCGTnPTt5MHR7+167Q7c0=;
	b=S51qZWwlSwgOFHY2xIKYnaiEwSSB/6OgvJIoclFkRuL8affmOo2Lfu6/5VeylxFP
	XnfJC6SaUVZ2NHscQpBvhoFodVVnohnxfd5+G9k2+u4HFqiNN5UaRzD5tLIX+FBuBDl
	FQNcVFL+C/OEc/FpRhVuD/1UL9P3LOMSCMOJbTYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653059159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S65c2R6NvnMIHiapKVsEEHjCGTnPTt5MHR7+167Q7c0=;
	b=UcFsAogVSSzMIFbJpg7NhDD2mg54k7Y8i8/dfQ6Qj105r653apXL2Lu1mE5AZDxR
	vpxDNChg5P4JRmDqoPBNI4rYYytcSNQlfvEEqm9WCmP+8EYRzl17445XBTzgIEZJTk/
	n8l3WlKliLaYlfvNQ4Udxr0yUQUCpus58iX+WNAY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e2010518-f71a5180-1f43-4ee2-ad0c-cc43fa697a15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39ea837833b097b7a77e94664df374d899823c9be541a222f242d77cf478564a
Date: Fri, 20 May 2022 15:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653059159
